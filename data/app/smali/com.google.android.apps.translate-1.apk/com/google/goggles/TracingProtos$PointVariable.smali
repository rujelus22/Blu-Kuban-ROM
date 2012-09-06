.class public final Lcom/google/goggles/TracingProtos$PointVariable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$PointVariableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointVariable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$PointVariable$Builder;,
        Lcom/google/goggles/TracingProtos$PointVariable$Type;
    }
.end annotation


# static fields
.field public static final TIMESTAMP_MS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$PointVariable;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timestampMs_:I

.field private type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 938
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$PointVariable;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$PointVariable;

    .line 939
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$PointVariable;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$PointVariable;->initFields()V

    .line 940
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 536
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 636
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    .line 664
    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedSerializedSize:I

    .line 537
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$PointVariable$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable;-><init>(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 636
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    .line 664
    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedSerializedSize:I

    .line 538
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/TracingProtos$PointVariable;Lcom/google/goggles/TracingProtos$PointVariable$Type;)Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/TracingProtos$PointVariable;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 531
    iput p1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/TracingProtos$PointVariable;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 531
    iput p1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 1

    .prologue
    .line 542
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$PointVariable;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 633
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I

    .line 635
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 1

    .prologue
    .line 756
    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->create()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$800()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2
    .parameter

    .prologue
    .line 759
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    .line 726
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 727
    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    .line 729
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    .line 737
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 738
    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    .line 740
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    #calls: Lcom/google/goggles/TracingProtos$PointVariable$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$PointVariable;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->access$700(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$PointVariable;
    .registers 2

    .prologue
    .line 546
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable;->defaultInstance:Lcom/google/goggles/TracingProtos$PointVariable;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$PointVariable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 666
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedSerializedSize:I

    .line 667
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 679
    :goto_7
    return v0

    .line 669
    :cond_8
    const/4 v0, 0x0

    .line 670
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1a

    .line 671
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$PointVariable$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    :cond_1a
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 675
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 678
    :cond_27
    iput v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getTimestampMs()I
    .registers 2

    .prologue
    .line 629
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I

    return v0
.end method

.method public getType()Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    return-object v0
.end method

.method public hasTimestampMs()Z
    .registers 3

    .prologue
    .line 626
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 616
    iget v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 638
    iget-byte v2, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    .line 639
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 650
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 639
    goto :goto_9

    .line 641
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->hasType()Z

    move-result v2

    if-nez v2, :cond_16

    .line 642
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    move v0, v1

    .line 643
    goto :goto_9

    .line 645
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->hasTimestampMs()Z

    move-result v2

    if-nez v2, :cond_20

    .line 646
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    move v0, v1

    .line 647
    goto :goto_9

    .line 649
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2

    .prologue
    .line 757
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilderForType()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    .registers 2

    .prologue
    .line 761
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder(Lcom/google/goggles/TracingProtos$PointVariable;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->toBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

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
    .line 686
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 655
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$PointVariable;->getSerializedSize()I

    .line 656
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 657
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->type_:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 659
    :cond_14
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 660
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable;->timestampMs_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 662
    :cond_1f
    return-void
.end method
