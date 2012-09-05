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
    .line 51037
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    .line 51038
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->initFields()V

    .line 51039
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 50722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    .line 50810
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 50723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50717
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 50724
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedIsInitialized:B

    .line 50810
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 50724
    return-void
.end method

.method static synthetic access$71902(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50717
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object p1
.end method

.method static synthetic access$72002(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50717
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 1

    .prologue
    .line 50728
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 50791
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    .line 50792
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50717
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;
    .registers 2

    .prologue
    .line 50732
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 50812
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    .line 50813
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 50821
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 50815
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 50816
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 50817
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 50820
    :cond_1a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 50821
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;
    .registers 2

    .prologue
    .line 50787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50784
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

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
    .line 50828
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

    .line 50804
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->getSerializedSize()I

    .line 50805
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 50806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse;->status_:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationValidationResponse$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 50808
    :cond_13
    return-void
.end method
