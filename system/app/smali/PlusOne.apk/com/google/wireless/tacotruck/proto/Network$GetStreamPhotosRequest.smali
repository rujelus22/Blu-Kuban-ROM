.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetStreamPhotosRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private ifModifiedSince_:J

.field private maxPhotoCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private ownerGaiaId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z

.field private sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field private streamId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28836
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    .line 28837
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->initFields()V

    .line 28838
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27894
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28116
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28163
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 27895
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27896
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28116
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28163
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 27896
    return-void
.end method

.method static synthetic access$38902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$39002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39102(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39202(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$39302(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$39402(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$39502(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    return p1
.end method

.method static synthetic access$39602(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    return p1
.end method

.method static synthetic access$39702(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object p1
.end method

.method static synthetic access$39802(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    return-wide p1
.end method

.method static synthetic access$39902(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$40002(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27889
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 1

    .prologue
    .line 27900
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27980
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 27981
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27982
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27984
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 27987
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28012
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28013
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28014
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28016
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28019
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

    .line 28104
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    .line 28105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 28106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 28107
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    .line 28108
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    .line 28109
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    .line 28110
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    .line 28111
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    .line 28112
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28113
    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    .line 28114
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 28115
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 28291
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;->access$38700()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27889
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
    .registers 2

    .prologue
    .line 27904
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27966
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 27967
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27968
    check-cast v1, Ljava/lang/String;

    .line 27976
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27972
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27973
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27974
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27976
    goto :goto_8
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 28090
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    return-wide v0
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 28060
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 28070
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    return v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 27956
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 28100
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28040
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28050
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28030
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    .line 28166
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 28214
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 28168
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 28169
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1a

    .line 28170
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28173
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_29

    .line 28174
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28177
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_37

    .line 28178
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28181
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_46

    .line 28182
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28185
    :cond_46
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 28186
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28189
    :cond_56
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_66

    .line 28190
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28193
    :cond_66
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_76

    .line 28194
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28197
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_89

    .line 28198
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->getNumber()I

    move-result v2

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28201
    :cond_89
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9a

    .line 28202
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28205
    :cond_9a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_ab

    .line 28206
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28209
    :cond_ab
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_bc

    .line 28210
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28213
    :cond_bc
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 28214
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSortBy()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2

    .prologue
    .line 28080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27998
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    .line 27999
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28000
    check-cast v1, Ljava/lang/String;

    .line 28008
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28002
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28004
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28005
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28006
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->streamId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28008
    goto :goto_8
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 27963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasIfModifiedSince()Z
    .registers 3

    .prologue
    .line 28087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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
    .line 28057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 28067
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27953
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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
    .line 28037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28047
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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
    .line 28027
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

.method public hasSortBy()Z
    .registers 3

    .prologue
    .line 28077
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStreamId()Z
    .registers 3

    .prologue
    .line 27995
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

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

    .line 28118
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

    .line 28119
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28122
    :goto_8
    return v1

    .line 28119
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28121
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->memoizedIsInitialized:B

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
    .line 28221
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

    .line 28127
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getSerializedSize()I

    .line 28128
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_13

    .line 28129
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28131
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_20

    .line 28132
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28134
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_2c

    .line 28135
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnUrls_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28137
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_39

    .line 28138
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnComments_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28140
    :cond_39
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_47

    .line 28141
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28143
    :cond_47
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_55

    .line 28144
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->maxPhotoCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28146
    :cond_55
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_63

    .line 28147
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->offset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 28149
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_74

    .line 28150
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->sortBy_:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->getNumber()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 28152
    :cond_74
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_83

    .line 28153
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->ifModifiedSince_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28155
    :cond_83
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_92

    .line 28156
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28158
    :cond_92
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_a1

    .line 28159
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28161
    :cond_a1
    return-void
.end method
