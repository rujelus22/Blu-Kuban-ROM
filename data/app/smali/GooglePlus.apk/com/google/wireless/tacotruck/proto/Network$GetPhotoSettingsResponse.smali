.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoSettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enablePhotoDownload_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54369
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    .line 54370
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->initFields()V

    .line 54371
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 54105
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 54132
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedIsInitialized:B

    .line 54149
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedSerializedSize:I

    .line 54106
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54100
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 54107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 54132
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedIsInitialized:B

    .line 54149
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedSerializedSize:I

    .line 54107
    return-void
.end method

.method static synthetic access$76702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54100
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z

    return p1
.end method

.method static synthetic access$76802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54100
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 1

    .prologue
    .line 54111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 54130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z

    .line 54131
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 54237
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->access$76500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 54240
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54173
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;->access$76400(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;
    .registers 2

    .prologue
    .line 54115
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;

    return-object v0
.end method

.method public getEnablePhotoDownload()Z
    .registers 2

    .prologue
    .line 54126
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 54151
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedSerializedSize:I

    .line 54152
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 54160
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 54154
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 54155
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 54156
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 54159
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 54160
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasEnablePhotoDownload()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54123
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->bitField0_:I

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

    .line 54134
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedIsInitialized:B

    .line 54135
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 54138
    :goto_8
    return v1

    .line 54135
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 54137
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 54238
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 54242
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse$Builder;

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
    .line 54167
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

    .line 54143
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->getSerializedSize()I

    .line 54144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 54145
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoSettingsResponse;->enablePhotoDownload_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 54147
    :cond_f
    return-void
.end method
