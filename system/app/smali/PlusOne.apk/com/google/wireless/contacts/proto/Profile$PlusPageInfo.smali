.class public final Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$PlusPageInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusPageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;,
        Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2543
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 2544
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->initFields()V

    .line 2545
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2219
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2299
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedIsInitialized:B

    .line 2316
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedSerializedSize:I

    .line 2220
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2214
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;-><init>(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2299
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedIsInitialized:B

    .line 2316
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedSerializedSize:I

    .line 2221
    return-void
.end method

.method static synthetic access$3502(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2214
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 1

    .prologue
    .line 2225
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2297
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2298
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 1

    .prologue
    .line 2404
    #calls: Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->access$3300()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2407
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 2229
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method public getEntityType()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2318
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedSerializedSize:I

    .line 2319
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 2327
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 2321
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 2322
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 2323
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2326
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 2327
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasEntityType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2290
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->bitField0_:I

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

    .line 2301
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedIsInitialized:B

    .line 2302
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2305
    :goto_8
    return v1

    .line 2302
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2304
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2334
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

    .line 2310
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getSerializedSize()I

    .line 2311
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 2312
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->entityType_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2314
    :cond_13
    return-void
.end method
