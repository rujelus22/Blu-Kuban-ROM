.class public final Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCacheOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidateLocalCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34174
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 34175
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->initFields()V

    .line 34176
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33910
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33937
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedIsInitialized:B

    .line 33954
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedSerializedSize:I

    .line 33911
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33905
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33912
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33937
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedIsInitialized:B

    .line 33954
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedSerializedSize:I

    .line 33912
    return-void
.end method

.method static synthetic access$47502(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33905
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I

    return p1
.end method

.method static synthetic access$47602(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33905
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 1

    .prologue
    .line 33916
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 33935
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I

    .line 33936
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 1

    .prologue
    .line 34042
    #calls: Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->access$47300()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34045
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33905
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 33920
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 33956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedSerializedSize:I

    .line 33957
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 33965
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 33959
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 33960
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 33961
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33964
    :cond_16
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedSerializedSize:I

    move v1, v0

    .line 33965
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 33931
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I

    return v0
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33928
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->bitField0_:I

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

    .line 33939
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedIsInitialized:B

    .line 33940
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33943
    :goto_8
    return v1

    .line 33940
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33942
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33905
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 2

    .prologue
    .line 34043
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33905
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 2

    .prologue
    .line 34047
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

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
    .line 33972
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

    .line 33948
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getSerializedSize()I

    .line 33949
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 33950
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33952
    :cond_f
    return-void
.end method
