.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private personId_:Ljava/lang/Object;

.field private photoId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27398
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 27399
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->initFields()V

    .line 27400
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26917
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27032
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 27055
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 26918
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26912
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27032
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 27055
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 26919
    return-void
.end method

.method static synthetic access$36602(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26912
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36702(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26912
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36802(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26912
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36902(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26912
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    return p1
.end method

.method private getAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26984
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 26985
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26986
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26988
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 26991
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 1

    .prologue
    .line 26923
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method private getPersonIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26952
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 26953
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26954
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26956
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 26959
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

.method private getPhotoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27016
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 27017
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27018
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27020
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 27023
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
    .line 27028
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 27029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 27030
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 27031
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 27151
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->access$36400()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26970
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 26971
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26972
    check-cast v1, Ljava/lang/String;

    .line 26980
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26974
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26976
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26977
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26978
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26980
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26912
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 26927
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 26938
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 26939
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 26940
    check-cast v1, Ljava/lang/String;

    .line 26948
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 26942
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26944
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 26945
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 26946
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 26948
    goto :goto_8
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27002
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 27003
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27004
    check-cast v1, Ljava/lang/String;

    .line 27012
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27006
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27008
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27009
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27010
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27012
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27057
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 27058
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27074
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27060
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27061
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 27062
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27065
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 27066
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27069
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 27070
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27073
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    move v1, v0

    .line 27074
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 26967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

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

.method public hasPersonId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26935
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoId()Z
    .registers 3

    .prologue
    .line 26999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

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

    .line 27034
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 27035
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 27038
    :goto_8
    return v1

    .line 27035
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 27037
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26912
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27152
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26912
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2

    .prologue
    .line 27156
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

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
    .line 27081
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

    .line 27043
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getSerializedSize()I

    .line 27044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 27045
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27047
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 27048
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27050
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 27051
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27053
    :cond_2e
    return-void
.end method
