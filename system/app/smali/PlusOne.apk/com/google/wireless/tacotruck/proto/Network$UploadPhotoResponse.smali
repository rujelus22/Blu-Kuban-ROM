.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadPhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

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
    .line 45048
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    .line 45049
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->initFields()V

    .line 45050
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44773
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 44796
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 44747
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44741
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44773
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 44796
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 44748
    return-void
.end method

.method static synthetic access$62802(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44741
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object p1
.end method

.method static synthetic access$62902(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44741
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 1

    .prologue
    .line 44752
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 44771
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 44772
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44884
    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->access$62600()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44820
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->access$62500(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44741
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 44756
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 44767
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 44798
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 44799
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 44807
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 44801
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 44802
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 44803
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44806
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 44807
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44764
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

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

    .line 44775
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 44776
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 44785
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 44776
    goto :goto_9

    .line 44778
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 44779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 44780
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 44781
    goto :goto_9

    .line 44784
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

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
    .line 44814
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

    .line 44790
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getSerializedSize()I

    .line 44791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 44792
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 44794
    :cond_f
    return-void
.end method
