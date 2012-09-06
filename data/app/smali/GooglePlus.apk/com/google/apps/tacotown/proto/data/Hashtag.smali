.class public final Lcom/google/apps/tacotown/proto/data/Hashtag;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hashtag.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/HashtagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/Hashtag$1;,
        Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/Hashtag;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private searchText_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 311
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Hashtag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/Hashtag;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Hashtag;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Hashtag;

    .line 312
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Hashtag;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Hashtag;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->initFields()V

    .line 313
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 59
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedIsInitialized:B

    .line 76
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;Lcom/google/apps/tacotown/proto/data/Hashtag$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/Hashtag;-><init>(Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 59
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedIsInitialized:B

    .line 76
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/Hashtag;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/data/Hashtag;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Hashtag;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Hashtag;

    return-object v0
.end method

.method private getSearchTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    .line 46
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 47
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 49
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    .line 52
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
    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 1

    .prologue
    .line 164
    #calls: Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->create()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 167
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Hashtag;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Hashtag;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    .line 32
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 41
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 78
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedSerializedSize:I

    .line 79
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 87
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 81
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 82
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 83
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getSearchTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    :cond_18
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedSerializedSize:I

    move v1, v0

    .line 87
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasSearchText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->bitField0_:I

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

    .line 61
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedIsInitialized:B

    .line 62
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 65
    :goto_8
    return v1

    .line 62
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 64
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 2

    .prologue
    .line 169
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->newBuilder(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->toBuilder()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

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
    .line 94
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

    .line 70
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getSerializedSize()I

    .line 71
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 72
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getSearchTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 74
    :cond_11
    return-void
.end method
