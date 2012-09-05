.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneVerificationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50195
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    .line 50196
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->initFields()V

    .line 50197
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 49784
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 49894
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedIsInitialized:B

    .line 49914
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedSerializedSize:I

    .line 49785
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49779
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 49786
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49894
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedIsInitialized:B

    .line 49914
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedSerializedSize:I

    .line 49786
    return-void
.end method

.method static synthetic access$70602(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49779
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    return-object p1
.end method

.method static synthetic access$70702(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49779
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$70802(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49779
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
    .registers 1

    .prologue
    .line 49790
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 49879
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    .line 49880
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 49881
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 49883
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    .line 49886
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
    .line 49891
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    .line 49892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    .line 49893
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;
    .registers 2

    .prologue
    .line 49794
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 49865
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    .line 49866
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 49867
    check-cast v1, Ljava/lang/String;

    .line 49875
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 49869
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 49871
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 49872
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 49873
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 49875
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 49916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedSerializedSize:I

    .line 49917
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 49929
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 49919
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 49920
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 49921
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 49924
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 49925
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49928
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 49929
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;
    .registers 2

    .prologue
    .line 49855
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    return-object v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 49862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49852
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

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
    .line 49936
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

    .line 49905
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getSerializedSize()I

    .line 49906
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 49907
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 49909
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 49910
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationResponse;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 49912
    :cond_21
    return-void
.end method
