.class public final Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CountriesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountriesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private returnKnownPhoneNumber_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48913
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    .line 48914
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->initFields()V

    .line 48915
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 48649
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 48676
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    .line 48693
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 48650
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48644
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 48651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48676
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    .line 48693
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 48651
    return-void
.end method

.method static synthetic access$68902(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48644
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    return p1
.end method

.method static synthetic access$69002(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48644
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 1

    .prologue
    .line 48655
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 48674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    .line 48675
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48644
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 2

    .prologue
    .line 48659
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    return-object v0
.end method

.method public getReturnKnownPhoneNumber()Z
    .registers 2

    .prologue
    .line 48670
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 48695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 48696
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 48704
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 48698
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 48699
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 48700
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 48703
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 48704
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasReturnKnownPhoneNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48667
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

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
    .line 48711
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

    .line 48687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getSerializedSize()I

    .line 48688
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 48689
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 48691
    :cond_f
    return-void
.end method
