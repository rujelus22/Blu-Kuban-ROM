.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54086
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    .line 54087
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->initFields()V

    .line 54088
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 53785
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 53834
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedIsInitialized:B

    .line 53851
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedSerializedSize:I

    .line 53786
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53780
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 53787
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 53834
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedIsInitialized:B

    .line 53851
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedSerializedSize:I

    .line 53787
    return-void
.end method

.method static synthetic access$76202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53780
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$76302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53780
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    .registers 1

    .prologue
    .line 53791
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    return-object v0
.end method

.method private getUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 53820
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    .line 53821
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 53822
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 53824
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    .line 53827
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
    .line 53832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    .line 53833
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 53939
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->access$76000()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 53942
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 53780
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;
    .registers 2

    .prologue
    .line 53795
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 53853
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedSerializedSize:I

    .line 53854
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 53862
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 53856
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 53857
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 53858
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53861
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 53862
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUserId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53806
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    .line 53807
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 53808
    check-cast v1, Ljava/lang/String;

    .line 53816
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 53810
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 53812
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 53813
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 53814
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->userId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 53816
    goto :goto_8
.end method

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53803
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->bitField0_:I

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

    .line 53836
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedIsInitialized:B

    .line 53837
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 53840
    :goto_8
    return v1

    .line 53837
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 53839
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53780
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 53940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 53780
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 53944
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest$Builder;

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
    .line 53869
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

    .line 53845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getSerializedSize()I

    .line 53846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 53847
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsRequest;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 53849
    :cond_11
    return-void
.end method
