.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxFieldOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34960
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    .line 34961
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->initFields()V

    .line 34962
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34580
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34640
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedIsInitialized:B

    .line 34660
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedSerializedSize:I

    .line 34581
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34575
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34582
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34640
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedIsInitialized:B

    .line 34660
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedSerializedSize:I

    .line 34582
    return-void
.end method

.method static synthetic access$47102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34575
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object p1
.end method

.method static synthetic access$47202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34575
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$47302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34575
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 1

    .prologue
    .line 34586
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34625
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    .line 34626
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34627
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34629
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    .line 34632
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
    .line 34637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    .line 34638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    .line 34639
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 1

    .prologue
    .line 34752
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->access$46900()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34755
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34575
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 2

    .prologue
    .line 34590
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34611
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    .line 34612
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34613
    check-cast v1, Ljava/lang/String;

    .line 34621
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34615
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34617
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34618
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34619
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34621
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 34662
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedSerializedSize:I

    .line 34663
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 34675
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 34665
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 34666
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 34667
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34670
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 34671
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34674
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedSerializedSize:I

    move v1, v0

    .line 34675
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;
    .registers 2

    .prologue
    .line 34601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    return-object v0
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 34608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

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

.method public hasValue()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34598
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

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

    .line 34642
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedIsInitialized:B

    .line 34643
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34646
    :goto_8
    return v1

    .line 34643
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34645
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34575
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 34753
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34575
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;
    .registers 2

    .prologue
    .line 34757
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption$Builder;

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
    .line 34682
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 34651
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getSerializedSize()I

    .line 34652
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 34653
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->value_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34655
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 34656
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34658
    :cond_1d
    return-void
.end method
