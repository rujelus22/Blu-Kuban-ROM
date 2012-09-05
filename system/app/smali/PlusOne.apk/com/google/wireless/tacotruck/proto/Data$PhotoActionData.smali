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
    .line 25313
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    .line 25314
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->initFields()V

    .line 25315
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24947
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 24970
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 24833
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24827
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24947
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 24970
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 24834
    return-void
.end method

.method static synthetic access$34102(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24827
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34202(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24827
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34302(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24827
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34402(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24827
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    return p1
.end method

.method private getAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24899
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 24900
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24901
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24903
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 24906
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
    .line 24838
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method private getPersonIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24867
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 24868
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24869
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24871
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 24874
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
    .line 24931
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 24932
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24933
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24935
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 24938
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
    .line 24943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 24944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 24945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 24946
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 1

    .prologue
    .line 25066
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;->access$33900()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25069
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
    .line 24885
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    .line 24886
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24887
    check-cast v1, Ljava/lang/String;

    .line 24895
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24889
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24891
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24892
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24893
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->albumId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24895
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24827
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    .registers 2

    .prologue
    .line 24842
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24853
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    .line 24854
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24855
    check-cast v1, Ljava/lang/String;

    .line 24863
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24857
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24859
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24860
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24861
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->personId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24863
    goto :goto_8
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24917
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    .line 24918
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24919
    check-cast v1, Ljava/lang/String;

    .line 24927
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24921
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24923
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24924
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24925
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->photoId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24927
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    .line 24973
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 24989
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 24975
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 24976
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 24977
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24980
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 24981
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24984
    :cond_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 24985
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24988
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedSerializedSize:I

    move v1, v0

    .line 24989
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 24882
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

    .line 24850
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
    .line 24914
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

    .line 24949
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

    .line 24950
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 24953
    :goto_8
    return v1

    .line 24950
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 24952
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->memoizedIsInitialized:B

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
    .line 24996
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

    .line 24958
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getSerializedSize()I

    .line 24959
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 24960
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24962
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 24963
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24965
    :cond_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 24966
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24968
    :cond_2e
    return-void
.end method
