.class public final Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditPhotoAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51414
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    .line 51415
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->initFields()V

    .line 51416
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51060
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51120
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    .line 51140
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 51061
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51055
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 51062
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51120
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedIsInitialized:B

    .line 51140
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 51062
    return-void
.end method

.method static synthetic access$72402(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51055
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$72502(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51055
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$72602(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51055
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 1

    .prologue
    .line 51066
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 51105
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 51106
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 51107
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 51109
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 51112
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
    .line 51117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    .line 51118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 51119
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 51081
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51055
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;
    .registers 2

    .prologue
    .line 51070
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51091
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    .line 51092
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 51093
    check-cast v1, Ljava/lang/String;

    .line 51101
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 51095
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 51097
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 51098
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 51099
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 51101
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 51142
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    .line 51143
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 51155
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 51145
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 51146
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 51147
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 51150
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_26

    .line 51151
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51154
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 51155
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51078
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 51088
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 51162
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 51131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getSerializedSize()I

    .line 51132
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 51133
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 51135
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1d

    .line 51136
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 51138
    :cond_1d
    return-void
.end method
