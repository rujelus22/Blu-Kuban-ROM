.class public final Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientResponseParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;,
        Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2150
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    .line 2151
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->initFields()V

    .line 2152
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1906
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedIsInitialized:B

    .line 1923
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedSerializedSize:I

    .line 1833
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1827
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1906
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedIsInitialized:B

    .line 1923
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedSerializedSize:I

    .line 1834
    return-void
.end method

.method static synthetic access$3202(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1827
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    .registers 1

    .prologue
    .line 1838
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1904
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1905
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 1

    .prologue
    .line 2011
    #calls: Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->access$3000()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2014
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
    .registers 2

    .prologue
    .line 1842
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;

    return-object v0
.end method

.method public getResponseSource()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 2

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1925
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedSerializedSize:I

    .line 1926
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1934
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1928
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1929
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1930
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1933
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedSerializedSize:I

    move v1, v0

    .line 1934
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasResponseSource()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1897
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->bitField0_:I

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

    .line 1908
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedIsInitialized:B

    .line 1909
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1912
    :goto_8
    return v1

    .line 1909
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1911
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 2

    .prologue
    .line 2012
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->toBuilder()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;
    .registers 2

    .prologue
    .line 2016
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$Builder;

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
    .line 1941
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

    .line 1917
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->getSerializedSize()I

    .line 1918
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1919
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;->responseSource_:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1921
    :cond_13
    return-void
.end method
