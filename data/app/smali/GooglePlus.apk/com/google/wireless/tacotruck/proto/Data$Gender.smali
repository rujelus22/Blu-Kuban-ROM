.class public final Lcom/google/wireless/tacotruck/proto/Data$Gender;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$GenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Gender;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30554
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .line 30555
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->initFields()V

    .line 30556
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30239
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30310
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedIsInitialized:B

    .line 30327
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedSerializedSize:I

    .line 30240
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30234
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30310
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedIsInitialized:B

    .line 30327
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedSerializedSize:I

    .line 30241
    return-void
.end method

.method static synthetic access$41402(Lcom/google/wireless/tacotruck/proto/Data$Gender;Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30234
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object p1
.end method

.method static synthetic access$41502(Lcom/google/wireless/tacotruck/proto/Data$Gender;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30234
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 1

    .prologue
    .line 30245
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 30308
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30309
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 1

    .prologue
    .line 30415
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->access$41200()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30418
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 30249
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Gender;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 30329
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedSerializedSize:I

    .line 30330
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 30338
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 30332
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 30333
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 30334
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30337
    :cond_1a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedSerializedSize:I

    move v1, v0

    .line 30338
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2

    .prologue
    .line 30304
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30301
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I

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

    .line 30312
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedIsInitialized:B

    .line 30313
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30316
    :goto_8
    return v1

    .line 30313
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30315
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 30416
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30234
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 30420
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

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
    .line 30345
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

    .line 30321
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getSerializedSize()I

    .line 30322
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 30323
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30325
    :cond_13
    return-void
.end method
