.class public final Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16355
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    .line 16356
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->initFields()V

    .line 16357
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16091
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16118
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    .line 16135
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16092
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16086
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16093
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16118
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    .line 16135
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16093
    return-void
.end method

.method static synthetic access$21602(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16086
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$21702(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16086
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 1

    .prologue
    .line 16097
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 16116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    .line 16117
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 16112
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16086
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 2

    .prologue
    .line 16101
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 16137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16138
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 16146
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 16140
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 16141
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 16142
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16145
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 16146
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16109
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16153
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

    .line 16129
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getSerializedSize()I

    .line 16130
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 16131
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16133
    :cond_f
    return-void
.end method
