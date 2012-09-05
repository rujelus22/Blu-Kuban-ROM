.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private interaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private number_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30849
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    .line 30850
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->initFields()V

    .line 30851
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30407
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30478
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    .line 30498
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 30408
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30402
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30409
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30478
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedIsInitialized:B

    .line 30498
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 30409
    return-void
.end method

.method static synthetic access$42402(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30402
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42500(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30402
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42502(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30402
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42602(Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30402
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 1

    .prologue
    .line 30413
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    return-object v0
.end method

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30442
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 30443
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30444
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30446
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 30449
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
    .line 30475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 30476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    .line 30477
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;
    .registers 2

    .prologue
    .line 30417
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;

    return-object v0
.end method

.method public getInteraction(I)Lcom/google/wireless/tacotruck/proto/Data$Interaction;
    .registers 3
    .parameter "index"

    .prologue
    .line 30467
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Interaction;

    return-object v0
.end method

.method public getInteractionCount()I
    .registers 2

    .prologue
    .line 30464
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInteractionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Interaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method public getInteractionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 30471
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;

    return-object v0
.end method

.method public getInteractionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$InteractionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30461
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30428
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    .line 30429
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30430
    check-cast v1, Ljava/lang/String;

    .line 30438
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30432
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30434
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30435
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30436
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->number_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30438
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 30500
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    .line 30501
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 30513
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 30503
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 30504
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 30505
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30508
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 30509
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30508
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 30512
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 30513
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30425
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

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
    .line 30520
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
    const/4 v2, 0x1

    .line 30489
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getSerializedSize()I

    .line 30490
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 30491
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30493
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 30494
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsRequest;->interaction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30493
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 30496
    :cond_29
    return-void
.end method
