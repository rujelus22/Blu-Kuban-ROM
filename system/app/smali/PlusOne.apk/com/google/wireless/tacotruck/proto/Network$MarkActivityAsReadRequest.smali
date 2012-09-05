.class public final Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MarkActivityAsReadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34206
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    .line 34207
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->initFields()V

    .line 34208
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33892
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33922
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedIsInitialized:B

    .line 33939
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedSerializedSize:I

    .line 33893
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33887
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33894
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33922
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedIsInitialized:B

    .line 33939
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedSerializedSize:I

    .line 33894
    return-void
.end method

.method static synthetic access$47600(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$47602(Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;
    .registers 1

    .prologue
    .line 33898
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 33920
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    .line 33921
    return-void
.end method


# virtual methods
.method public getActivityId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 33916
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActivityIdCount()I
    .registers 2

    .prologue
    .line 33913
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getActivityIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33910
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;
    .registers 2

    .prologue
    .line 33902
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 33941
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedSerializedSize:I

    .line 33942
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 33955
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 33944
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 33946
    const/4 v0, 0x0

    .line 33947
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 33948
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 33947
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 33951
    :cond_20
    add-int/2addr v2, v0

    .line 33952
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->getActivityIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 33954
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 33955
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 33962
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
    .line 33933
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->getSerializedSize()I

    .line 33934
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 33935
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MarkActivityAsReadRequest;->activityId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33934
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 33937
    :cond_19
    return-void
.end method
