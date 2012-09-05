.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnAlbumInfo_:Z

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15592
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    .line 15593
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->initFields()V

    .line 15594
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14894
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15020
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15058
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 14895
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14896
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15020
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15058
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 14896
    return-void
.end method

.method static synthetic access$19802(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    return-wide p1
.end method

.method static synthetic access$19902(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$20002(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$20302(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    return p1
.end method

.method static synthetic access$20502(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$20602(Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14889
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 1

    .prologue
    .line 14900
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14949
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14950
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14951
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14953
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14956
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
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15011
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    .line 15012
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    .line 15013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 15014
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    .line 15015
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    .line 15016
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    .line 15017
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    .line 15018
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 15019
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 15174
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;->access$19600()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;
    .registers 2

    .prologue
    .line 14904
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14935
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 14936
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14937
    check-cast v1, Ljava/lang/String;

    .line 14945
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14939
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14941
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14942
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14943
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14945
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 14915
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    return-wide v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 14925
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 15007
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnAlbumInfo()Z
    .registers 2

    .prologue
    .line 14997
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    return v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14977
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14987
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14967
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15060
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    .line 15061
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 15097
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 15063
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 15064
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 15065
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15068
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 15069
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15072
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_35

    .line 15073
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15076
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 15077
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15080
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_54

    .line 15081
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15084
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    .line 15085
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15088
    :cond_64
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_74

    .line 15089
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15092
    :cond_74
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_83

    .line 15093
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15096
    :cond_83
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 15097
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 14932
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14912
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 14922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 15004
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasReturnAlbumInfo()Z
    .registers 3

    .prologue
    .line 14994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14984
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 15022
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

    .line 15023
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 15026
    :goto_8
    return v1

    .line 15023
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 15025
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->memoizedIsInitialized:B

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
    .line 15104
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 15031
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getSerializedSize()I

    .line 15032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 15033
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15035
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1e

    .line 15036
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15038
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2a

    .line 15039
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnUrls_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15041
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 15042
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnComments_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15044
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_45

    .line 15045
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15047
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_53

    .line 15048
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->returnAlbumInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15050
    :cond_53
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_61

    .line 15051
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15053
    :cond_61
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_6e

    .line 15054
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAlbumRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15056
    :cond_6e
    return-void
.end method
