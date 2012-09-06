.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneVerificationValidationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52187
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    .line 52188
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->initFields()V

    .line 52189
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51872
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51943
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    .line 51960
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 51873
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51867
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 51874
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51943
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    .line 51960
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 51874
    return-void
.end method

.method static synthetic access$73402(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51867
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object p1
.end method

.method static synthetic access$73502(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51867
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 1

    .prologue
    .line 51878
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 51941
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 51942
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 1

    .prologue
    .line 52048
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->access$73200()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 52051
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51867
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 2

    .prologue
    .line 51882
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 51962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 51963
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 51971
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 51965
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 51966
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 51967
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 51970
    :cond_1a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 51971
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2

    .prologue
    .line 51937
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51934
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

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

    .line 51945
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    .line 51946
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 51949
    :goto_8
    return v1

    .line 51946
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 51948
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51867
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 2

    .prologue
    .line 52049
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51867
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;
    .registers 2

    .prologue
    .line 52053
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;

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
    .line 51978
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

    .line 51954
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getSerializedSize()I

    .line 51955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 51956
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 51958
    :cond_13
    return-void
.end method
