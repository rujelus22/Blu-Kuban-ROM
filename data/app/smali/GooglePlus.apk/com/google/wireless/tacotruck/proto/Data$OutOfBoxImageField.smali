.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxImageField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private centered_:Z

.field private coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

.field private descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32977
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 32978
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->initFields()V

    .line 32979
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32445
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32555
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 32581
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 32446
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32447
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32555
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 32581
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 32447
    return-void
.end method

.method static synthetic access$44302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object p1
.end method

.method static synthetic access$44402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    return p1
.end method

.method static synthetic access$44502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object p1
.end method

.method static synthetic access$44602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object p1
.end method

.method static synthetic access$44702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32440
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 1

    .prologue
    .line 32451
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 32550
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    .line 32552
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32553
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32554
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 32681
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->access$44100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32684
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCentered()Z
    .registers 2

    .prologue
    .line 32526
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    return v0
.end method

.method public getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 32536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32440
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 32455
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method public getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 32546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32583
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 32584
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 32604
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 32586
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 32587
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 32588
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32591
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 32592
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 32595
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 32596
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32599
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 32600
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32603
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    move v1, v0

    .line 32604
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2

    .prologue
    .line 32516
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method

.method public hasCentered()Z
    .registers 3

    .prologue
    .line 32523
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasCoverText()Z
    .registers 3

    .prologue
    .line 32533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDescriptiveText()Z
    .registers 3

    .prologue
    .line 32543
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32513
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

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

    .line 32557
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 32558
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32561
    :goto_8
    return v1

    .line 32558
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32560
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32440
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32682
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32440
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32686
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

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
    .line 32611
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 32566
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getSerializedSize()I

    .line 32567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 32568
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32570
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 32571
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 32573
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 32574
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32576
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 32577
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32579
    :cond_39
    return-void
.end method
