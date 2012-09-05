.class public final Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GooglePhotoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private mediaTag_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6268
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 6269
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->initFields()V

    .line 6270
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6004
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6031
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6048
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6005
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5999
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6006
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6031
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6048
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6006
    return-void
.end method

.method static synthetic access$7702(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5999
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    return-wide p1
.end method

.method static synthetic access$7802(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5999
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 1

    .prologue
    .line 6010
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 6029
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    .line 6030
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6136
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->access$7500()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6139
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5999
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 6014
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 6025
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 6050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6051
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 6059
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 6053
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 6054
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 6055
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6058
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    move v1, v0

    .line 6059
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6022
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6033
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6034
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6037
    :goto_8
    return v1

    .line 6034
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6036
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

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
    .line 6066
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

    .line 6042
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getSerializedSize()I

    .line 6043
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 6044
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6046
    :cond_f
    return-void
.end method
