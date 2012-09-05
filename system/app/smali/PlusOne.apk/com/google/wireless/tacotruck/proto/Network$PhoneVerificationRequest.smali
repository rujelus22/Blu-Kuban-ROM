.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneVerificationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49761
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    .line 49762
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->initFields()V

    .line 49763
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 49471
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 49498
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedIsInitialized:B

    .line 49515
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedSerializedSize:I

    .line 49472
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49466
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 49473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49498
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedIsInitialized:B

    .line 49515
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedSerializedSize:I

    .line 49473
    return-void
.end method

.method static synthetic access$70102(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49466
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object p1
.end method

.method static synthetic access$70202(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49466
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 1

    .prologue
    .line 49477
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 49496
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49497
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49466
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 2

    .prologue
    .line 49481
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    return-object v0
.end method

.method public getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 49492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 49517
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedSerializedSize:I

    .line 49518
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 49526
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 49520
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 49521
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 49522
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49525
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 49526
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPhone()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49489
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I

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
    .line 49533
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

    .line 49509
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getSerializedSize()I

    .line 49510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 49511
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 49513
    :cond_f
    return-void
.end method
