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
    .line 30196
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 30197
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->initFields()V

    .line 30198
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29664
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29774
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 29800
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 29665
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29666
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29774
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 29800
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 29666
    return-void
.end method

.method static synthetic access$40802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object p1
.end method

.method static synthetic access$40902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    return p1
.end method

.method static synthetic access$41002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object p1
.end method

.method static synthetic access$41102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object p1
.end method

.method static synthetic access$41202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29659
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 1

    .prologue
    .line 29670
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 29769
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 29770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    .line 29771
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29772
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29773
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 29900
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->access$40600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29903
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
    .line 29745
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    return v0
.end method

.method public getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 29755
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 29674
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method public getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 29765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29802
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    .line 29803
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 29823
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 29805
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 29806
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 29807
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 29810
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 29811
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29814
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 29815
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29818
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 29819
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29822
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedSerializedSize:I

    move v1, v0

    .line 29823
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2

    .prologue
    .line 29735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method

.method public hasCentered()Z
    .registers 3

    .prologue
    .line 29742
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
    .line 29752
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
    .line 29762
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

    .line 29732
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

    .line 29776
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

    .line 29777
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 29780
    :goto_8
    return v1

    .line 29777
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 29779
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->memoizedIsInitialized:B

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
    .line 29830
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

    .line 29785
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getSerializedSize()I

    .line 29786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 29787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 29789
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 29790
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 29792
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 29793
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29795
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 29796
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29798
    :cond_39
    return-void
.end method
