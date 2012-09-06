.class public final Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$FetchStageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FetchStage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;,
        Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 730
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 731
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->initFields()V

    .line 732
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 415
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 486
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedIsInitialized:B

    .line 503
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedSerializedSize:I

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;-><init>(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 417
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 486
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedIsInitialized:B

    .line 503
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedSerializedSize:I

    .line 417
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 1

    .prologue
    .line 421
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 484
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 485
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 1

    .prologue
    .line 591
    #calls: Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->access$700()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 594
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 505
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedSerializedSize:I

    .line 506
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 514
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 508
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 509
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 510
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 513
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedSerializedSize:I

    move v1, v0

    .line 514
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    return-object v0
.end method

.method public hasStage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 477
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->bitField0_:I

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

    .line 488
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedIsInitialized:B

    .line 489
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 492
    :goto_8
    return v1

    .line 489
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 491
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 2

    .prologue
    .line 592
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->toBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    .registers 2

    .prologue
    .line 596
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

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
    .line 521
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

    .line 497
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getSerializedSize()I

    .line 498
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 499
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->stage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 501
    :cond_13
    return-void
.end method
