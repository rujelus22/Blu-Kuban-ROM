.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47739
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    .line 47740
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->initFields()V

    .line 47741
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 47437
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47464
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedIsInitialized:B

    .line 47487
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedSerializedSize:I

    .line 47438
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47432
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 47439
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47464
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedIsInitialized:B

    .line 47487
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedSerializedSize:I

    .line 47439
    return-void
.end method

.method static synthetic access$67102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47432
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object p1
.end method

.method static synthetic access$67202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47432
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 1

    .prologue
    .line 47443
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 47462
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 47463
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 47575
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->access$66900()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47511
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;->access$66800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47432
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    .registers 2

    .prologue
    .line 47447
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 47458
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 47489
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedSerializedSize:I

    .line 47490
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 47498
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 47492
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 47493
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 47494
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47497
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 47498
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47455
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47466
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedIsInitialized:B

    .line 47467
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 47476
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 47467
    goto :goto_9

    .line 47469
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 47470
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 47471
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 47472
    goto :goto_9

    .line 47475
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->memoizedIsInitialized:B

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
    .line 47505
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 47481
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getSerializedSize()I

    .line 47482
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 47483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47485
    :cond_f
    return-void
.end method
