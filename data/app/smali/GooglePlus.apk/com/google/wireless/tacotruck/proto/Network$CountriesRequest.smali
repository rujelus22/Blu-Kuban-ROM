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
    .line 50063
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    .line 50064
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->initFields()V

    .line 50065
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 49799
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 49826
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    .line 49843
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 49800
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49794
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 49801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49826
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    .line 49843
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 49801
    return-void
.end method

.method static synthetic access$70402(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49794
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    return p1
.end method

.method static synthetic access$70502(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49794
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 1

    .prologue
    .line 49805
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 49824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    .line 49825
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 1

    .prologue
    .line 49931
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->access$70200()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 49934
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49794
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 2

    .prologue
    .line 49809
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    return-object v0
.end method

.method public getReturnKnownPhoneNumber()Z
    .registers 2

    .prologue
    .line 49820
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 49845
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    .line 49846
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 49854
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 49848
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 49849
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 49850
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 49853
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 49854
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasReturnKnownPhoneNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49817
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

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

    .line 49828
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    .line 49829
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 49832
    :goto_8
    return v1

    .line 49829
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 49831
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49794
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 2

    .prologue
    .line 49932
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49794
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 2

    .prologue
    .line 49936
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

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
    .line 49861
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

    .line 49837
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getSerializedSize()I

    .line 49838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 49839
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 49841
    :cond_f
    return-void
.end method
